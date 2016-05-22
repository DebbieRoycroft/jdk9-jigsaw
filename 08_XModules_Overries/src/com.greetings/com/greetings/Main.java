package com.greetings;
import java.util.concurrent.PriorityBlockingQueue;

public class Main {
	public static void main(String[] args) {
		System.out.println("Greetings");
		PriorityBlockingQueue<String> myQueue = new PriorityBlockingQueue<>();
		myQueue.peek();
	}
}