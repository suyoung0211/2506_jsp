package org.iclass.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor

public class ProductDto {
    private String pcode;
    private String category;
    private String pname;
    private int price;
}
