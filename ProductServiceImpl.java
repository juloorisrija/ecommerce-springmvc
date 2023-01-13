package com.training.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.training.springmvc.Dao.ProductDao;
import com.training.springmvc.model.Cart;
import com.training.springmvc.model.Product;

@Service
	public class ProductServiceImpl implements ProductService{

		@Autowired
		ProductDao productDao;

		@Override
		public Product getProduct() {
			Product p1 = productDao.getProductById(103);
			return p1;
		}

		public List<Product> getAllProducts() {

			List<Product> productList = productDao.getProducts();

			return productList;

			}

			 

			public boolean addProduct(Product product) {

			 

			return productDao.createProduct(product);

			}
			
			@Override
			public boolean deleteProduct(int prodId) {

				return productDao.deleteProduct(prodId);
			}

			@Override
			public boolean updateProduct(Product product) {
				// TODO Auto-generated method stub
				return productDao.updateProduct(product);
			}

			@Override
			public List<Cart> getAllCarts() {
				// TODO Auto-generated method stub
				List<Cart> cartList = productDao.getCart();

				return cartList;
			}

		
	
}
