package com.greenrecipe.main.vo;

import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBAttribute;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBHashKey;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBTable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@DynamoDBTable(tableName = "item")
public class DynamoItem {

	@DynamoDBHashKey
	private String itemNum;

	@DynamoDBAttribute
	private String item_name;

	@DynamoDBAttribute
	private int item_stock;
	


}
