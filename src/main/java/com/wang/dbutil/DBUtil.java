package com.wang.dbutil;

import java.util.ArrayList;
import java.util.List;

import com.mongodb.MongoClient;
import com.mongodb.MongoCredential;
import com.mongodb.MongoException;
import com.mongodb.ServerAddress;
import com.mongodb.client.MongoDatabase;

public class DBUtil {
	private static MongoClient mongoClient = null;
	private static MongoDatabase database = null;
	private static ServerAddress serverAddress = null;
	private static MongoCredential credentials = null;
	private static List<ServerAddress> addressLists = new ArrayList<ServerAddress>();
	private static List<MongoCredential> credentialsLists = new ArrayList<MongoCredential>();
	static {
		try {
			// mongoClient = new MongoClient("192.168.32.129",27017);
			serverAddress = new ServerAddress("ds147497.mlab.com", 47497);
			addressLists.add(serverAddress);
			credentials = MongoCredential.createScramSha1Credential("root",
					"koreyoshi", "root".toCharArray());
			credentialsLists.add(credentials);
			mongoClient = new MongoClient(addressLists, credentialsLists);
			System.out.println(mongoClient.getConnectPoint());
		} catch (MongoException e) {
			System.out.println(e.toString());
		}
		if (null != mongoClient) {
			database = mongoClient.getDatabase("koreyoshi");
			/*
			 * collection = database.getCollection("system.users");
			 * foundDocument = collection.find().into( new
			 * ArrayList<Document>()); System.out.println(foundDocument);
			 */
		}
	}
	
	public static MongoDatabase getDB(){
		return database;
	}
}
