package com.training.springmvc.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AddtoCartMapper implements RowMapper<Cart> {

		@Override
		public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {

			Cart cart =  new Cart();
			cart.setProdId(rs.getInt("prodid"));
			cart.setProdName(rs.getString("prodname"));
			cart.setProdDesc(rs.getString("proddesc"));
			cart.setPrice(rs.getInt("price"));
			return cart;
		}
}
