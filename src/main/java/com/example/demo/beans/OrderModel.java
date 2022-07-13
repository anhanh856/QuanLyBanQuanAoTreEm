package com.example.demo.beans;

import java.util.Date;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

import com.example.demo.entities.Account;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Component
public class OrderModel {
	private int id;
	private Account account;
	private Date createDate;
	@NotBlank(message = "Vui lòng không để trống địa chỉ")
	@NotNull(message = "Vui lòng không để trống địa chỉ")
	@Size(max = 255, message = "Không được điền quá 255 ký tự")
	private String address;
	//private int status;
	
}
