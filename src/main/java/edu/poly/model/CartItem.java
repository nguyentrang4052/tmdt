package edu.poly.model;
import lombok.*;

import java.io.Serializable;



@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartItem implements Serializable{
    private long id;
    private String name;
    private String image;
    private int quantity;
    private double price;
    private int discount;

}
