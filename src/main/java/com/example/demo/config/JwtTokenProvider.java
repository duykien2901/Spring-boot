package com.example.demo.config;

import io.jsonwebtoken.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
@Slf4j
public class JwtTokenProvider {
    // Đoạn JWT_SECRET này là bí mật, chỉ có phía server biết
    private final String JWT_SECRET = "Loddaaa";

    // Thời gian có hiệu lực của chuỗi Jwt
    private final long JWT_EXPIRATION = 604800000L;

    // Tạo ra jwt từ thông tin user
    public String generateToken(CustomUserDetail userDetail) {
        Date now = new Date();
        Date expiryDate = new Date(now.getTime() + JWT_EXPIRATION);
        // Tạo chuỗi Json web token từ id user
        return Jwts.builder()
                .setSubject(userDetail.getUser().getUsername()) // Chủ đề của JWT
                .setIssuedAt(now)    // Thời điểm bắt đầu tạo token
                .setExpiration(expiryDate)  // Hạn token
                .signWith(SignatureAlgorithm.HS512, JWT_SECRET)
                .compact(); // Đưa về String
    }

    // Lấy thông tin ưser từ JWT
    public String getUserFromJwt(String token) {
        Claims claims = Jwts.parser()  // Chuyển đổi từ Jwt
                            .setSigningKey(JWT_SECRET)
                            .parseClaimsJws(token)   // chuyển đổi claims
                            .getBody();
        return  claims.getSubject();
    }

    // Xác nhận token đúng hay ko
    public boolean validateToken(String authToken) {
        try {
            Jwts.parser().setSigningKey(JWT_SECRET).parseClaimsJws(authToken);
            return true;
        } catch (MalformedJwtException ex) {
            log.error("Invalid JWT token");
        } catch (ExpiredJwtException ex) {
            log.error("Expired JWT token");
        } catch (UnsupportedJwtException ex) {
            log.error("Unsupported JWT token");
        } catch (IllegalArgumentException ex) {
            log.error("JWT claims string is empty.");
        }
        return false;
    }


}
