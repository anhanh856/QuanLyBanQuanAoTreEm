package com.example.demo.beans;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class AccountModel {
	@NotNull(message = "Không được để trống")
	@NotBlank(message= "Không được để trống")
	@Size(max=255, message = "Kí tự không được quá 225")
	private String fullname;
	@Size(max=255, message = "Kí tự không được quá 225")
	@NotBlank(message = "Không được để trống")
	@NotNull(message = "Không được để trống")
	@Email(message = "Email phải đúng định dạng")
	
	private String email;
	@Size(max=255, message = "Kí tự không được quá 225")
	@NotNull(message = "Không được để trống")
	@NotBlank(message = "Không được để trống")
	private String username;
	@Size(max=255, message = "Kí tự không được quá 225")
	@NotNull(message = "Không được để trống")
	@NotBlank(message = "Không được để trống")
	private String password;
	//@NotBlank(message = "Không được để trống")
	//@Size(max=255, message = "Kí tự không được quá 225")
	@NotNull(message = "Không được để trống")
	private String photo;
	//@Size(max=255, message = "Kí tự không được quá 225")
	@NotNull(message = "Không được để trống")
	private int admin;
	

}
