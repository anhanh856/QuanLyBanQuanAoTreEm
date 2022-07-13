package com.example.demo.beans;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import com.example.demo.entities.Category;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class ProductModel {
	private int id;
	@NotBlank(message = "Không được để trống")
	@NotNull(message = "Không được để trống")
	@Size(max = 255, message = "Tên sản phẩm không điền quá 255 ký tự")
	private String name;
	@NotBlank(message = "Không được để trống")
	@NotNull(message = "Không được để trống")
	
	private String image;
	@NotNull(message = "Không được để trống giá")
    @Min(value = 0, message = "Giá phải lớn hơn 0")
	private int price;
	
	private Date createdDate;
	
	private int available;
	@NotNull(message = "Không được để trống danh mục")
	private Category category;
	
	
}
