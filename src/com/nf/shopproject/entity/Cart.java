package com.nf.shopproject.entity;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Cart {
	private Map<Integer,CartItem> carts=new HashMap();
	//添加商品到购物车
	public void addCartItem(CartItem item) {
		CartItem itemInCart =carts.get(item.getPrt_specification().getPk_id());
		//如果购物车里有东西,就在原来数量的基础上加,现在的数量,
		//否则 ,把商品放到购物车中.
		if(itemInCart!=null) {
			itemInCart.setCount(itemInCart.getCount()+item.getCount());
		}else {
			carts.put(item.getPrt_specification().getPk_id(),item);
		}				
	}
	//${cart.items}用于遍历购物车项集合里的值
	public List<CartItem> getItems(){
		return new ArrayList<CartItem>(carts.values());
	}
	//总数量
	public int getItemCount() {
		int total=0;
		for(CartItem item:carts.values()) {
			total+= item.getCount();//把购物车项的小计加起来
		}
		return  total;
	}
	//移除某个商品的一定数量
		public void removeItems(Integer id, Integer count) {
			CartItem itemInCart=carts.get(id);
			if(itemInCart==null) {
				return ;
			}
			//购物项的原数量,减输入的数量
			Integer newValue=itemInCart.getCount()-count;
			//数量<=0就移除
			if(newValue<=0) {
				carts.remove(id);
			}else {
				itemInCart.setCount(newValue);
			}
		}
	//移除一个商品
	public void removeItems(Integer id) {
		CartItem itemInCart=carts.get(id);
		if(itemInCart==null) {
			return ;
		}
		carts.remove(id);
	}
	//总价格
	public BigDecimal getTotal() {
		BigDecimal total=new BigDecimal(0);
		for(CartItem item:carts.values()){
			total=total.add(item.getSubTotal());
		}
		return total;
	}
}
