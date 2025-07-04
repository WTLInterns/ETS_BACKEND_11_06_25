package com.example.demo.Service;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VendorPasswordResetService {

    @Autowired
    private VendorService vendorService;

    @Autowired
    private EmailService emailService;

    // Temporary in-memory storage for OTPs (email -> OTP).
    private final Map<String, String> otpStorage = new HashMap<>();

    // Generate and send OTP to the provided email.
    public void sendResetOTP(String email) {
        var vendor = vendorService.findByEmail(email);
        if (vendor == null) {
            throw new RuntimeException("Vendor not found");
        }
        String otp = generateOTP();
        otpStorage.put(email, otp); // Store OTP in memory.

        // Send the OTP using the existing EmailService.
        boolean emailSent = emailService.sendHtmlEmail(otp, "Password Reset OTP", email);
        if (!emailSent) {
            throw new RuntimeException("Failed to send OTP email");
        }
    }

    // Generate a simple 6-character OTP.
    private String generateOTP() {
        return UUID.randomUUID().toString().substring(0, 6);
    }

    // Verify the provided OTP against the stored OTP.
    public boolean verifyOTP(String email, String otp) {
        String storedOtp = otpStorage.get(email);
        if (storedOtp != null && storedOtp.equals(otp)) {
            otpStorage.remove(email); // Clear OTP after successful validation.
            return true;
        }
        return false;
    }

    // Reset the password for the Vendor identified by email.
    public void resetPassword(String email, String newPassword) {
        var vendor = vendorService.findByEmail(email);
        if (vendor == null) {
            throw new RuntimeException("Vendor not found");
        }
        vendorService.updatePassword(vendor.getId(), newPassword);
    }
}
