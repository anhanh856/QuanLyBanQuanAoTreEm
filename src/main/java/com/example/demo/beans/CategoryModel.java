package com.example.demo.beans;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class CategoryModel {
	private int id;
	@NotNull(message = "Không được để trống")
	@NotBlank(message = "Không được để trống")
	@Size(max = 255, message = "Không được điền quá 255 ký tự")
	private String name;
}