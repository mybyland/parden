package com.byland.bylfc.entity;

public class Some {

	
	private int following;
	private int follower;
	private int message;
	public Some(int following, int follower, int message) {
		super();
		this.following = following;
		this.follower = follower;
		this.message = message;
	}
	public int getFollowing() {
		return following;
	}
	public void setFollowing(int following) {
		this.following = following;
	}
	public int getFollower() {
		return follower;
	}
	public void setFollower(int follower) {
		this.follower = follower;
	}
	public int getMessage() {
		return message;
	}
	public void setMessage(int message) {
		this.message = message;
	}
}
