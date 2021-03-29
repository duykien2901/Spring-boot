package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;

@RestController
@RequestMapping("/api")
public class UserController {
    @Autowired
    AuthenticationManager authenticationManager;

    @Autowired
    private  JwtTokenProvider tokenProvider;

    @Autowired
    UserService userService;

    @Autowired
    PasswordEncoder passwordEncoder;

    @Autowired
    UserRepository userRepository;

    @PostMapping("/login")
    public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {

        // Xác thực từ username và password. Chạy vào hàm này đầu tiên
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        loginRequest.getUsername(),
                        loginRequest.getPassword()
                )
        );

        // Nếu không xảy ra exception tức là thông tin hợp lệ
        // Set thông tin authentication vào Security Context
        SecurityContextHolder.getContext().setAuthentication(authentication);

        // Trả về jwt cho người dùng.
        String jwt = tokenProvider.generateToken((CustomUserDetail) authentication.getPrincipal());
        return ResponseEntity.ok(new LoginResponse(jwt));
    }

    @GetMapping("/login")
    public ResponseEntity<List<User>> getUser() {
        return ResponseEntity.ok(userService.getList());
    }
    // Api /api/random yêu cầu phải xác thực mới có thể request
    @GetMapping("/random")
    public RandomStuff randomStuff() {
        return new RandomStuff("JWT Hợp lệ mới có thể thấy được message này");
    }

//    @PostMapping("/login")
//    public ResponseEntity<LoginRequest> getUser(@RequestBody LoginRequest loginRequest) {
//        return ResponseEntity.ok(userService.save(loginRequest));
//    }
}
