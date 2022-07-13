package com.example.demo.beans;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class LoginModel {
	@Size(max=255, message = "Kí tự không được quá 225")
	@NotNull(message = "Không được để trống")
	@NotBlank(message = "Không được để trống")
	private String email;
	@NotNull(message = "Không được để trống")
	@Size(max=255, message = "Kí tự không được quá 225")
	private String password;
}
