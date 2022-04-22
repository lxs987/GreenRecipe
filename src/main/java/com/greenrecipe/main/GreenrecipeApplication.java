package com.greenrecipe.main;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.stereotype.Repository;


import com.amazonaws.auth.AWSStaticCredentialsProvider;
import com.amazonaws.auth.BasicAWSCredentials;
import com.amazonaws.client.builder.AwsClientBuilder;
import com.amazonaws.services.dynamodbv2.AmazonDynamoDB;
import com.amazonaws.services.dynamodbv2.AmazonDynamoDBClientBuilder;
import com.amazonaws.services.dynamodbv2.datamodeling.DynamoDBMapper;



@Repository
@SpringBootApplication(scanBasePackages = {"com.greenrecipe.main"})
public class GreenrecipeApplication {

	public static void main(String[] args) {
		SpringApplication.run(GreenrecipeApplication.class, args);
	}

	
	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource datasource) throws Exception {
		SqlSessionFactoryBean sqlSessionFactory = new SqlSessionFactoryBean();
		sqlSessionFactory.setDataSource(datasource);
        //mapper 워치에 따라서 classpath*:static/mappers/**/*Mapper.xml 이부분을 조정
        sqlSessionFactory.setMapperLocations(new PathMatchingResourcePatternResolver().getResources("classpath*:mappers/*.xml"));
		return sqlSessionFactory.getObject();
	}
	@Bean
	public SqlSessionTemplate sqlSession(SqlSessionFactory sqlSessionFactory) {
		return new SqlSessionTemplate(sqlSessionFactory);
	}

	
	
	@Bean
	public DynamoDBMapper dynamoDBmapper() {
		return new DynamoDBMapper(bulidAmazonDynamoDB());

	}

	private AmazonDynamoDB bulidAmazonDynamoDB() {
		// TODO Auto-generated method stub
		return AmazonDynamoDBClientBuilder.standard()
				.withEndpointConfiguration(new AwsClientBuilder.EndpointConfiguration(
						"dynamodb.ap-northeast-2.amazonaws.com", "ap-northeast-2"))
				.withCredentials(new AWSStaticCredentialsProvider(
						new BasicAWSCredentials("AKIAWPCB3NOTKCWV2KPF", "VaMqkYmhBpNk+MRNUEgJPQiEYN5dvsJh2KEZQP2W")))
				.build();

	}
	
	
	
	
	
}
