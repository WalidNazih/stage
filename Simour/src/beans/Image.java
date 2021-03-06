package beans;

import java.io.Serializable;

public class Image implements Serializable{
	private int id, category, likes;
	private String url, title, description, date;
	private boolean liked;

	public Image(int id, int category, String url, String title,
			String description, int likes, boolean liked, String date) {
		super();
		this.id = id;
		this.category = category;
		this.url = url;
		this.title = title;
		this.description = description;
		this.likes = likes;
		this.liked = liked;
		this.date = date;
	}

	public Image() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getLikes(){
		return this.likes;
	}

	public boolean isLiked() {
		return liked;
	}

	public void setLiked(boolean liked) {
		this.liked = liked;
	}
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
