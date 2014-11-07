 package com.mie.model;

public class Reviews {
	private int productID;
	private int rating;
	private String comment;
	
//getters
	
	public int getProductID(){
		return productID;
	}
	
	public String getComment(){
		return comment;
	}
	
	public int getRating(){
		return rating;
	}

//setters
	
	public void setComment(String i){
		this.comment = i;
	}
	
	public void setRating(int i){
		this.rating = i;
	}
	

	
}
