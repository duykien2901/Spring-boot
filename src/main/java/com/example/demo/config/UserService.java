package com.example.demo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    PasswordEncoder passwordEncoder;
    @Override
    public UserDetails loadUserByUsername(String username){
        // kiem tra su ton tai cua user
        User user = userRepository.findByUsername(username);
        if(user != null) {
            return new CustomUserDetail(user);
        }
        else {
            throw new UsernameNotFoundException(username);
        }
    }

    public List<User> getList() {
        return userRepository.findAll();
    }

    public  LoginRequest save(LoginRequest loginRequest) {
        User user = new User();
        user.setUsername(loginRequest.getUsername());
        user.setPassword(passwordEncoder.encode(loginRequest.getPassword()));
        userRepository.save(user);
        return loginRequest;
    }
}
