package jieun.pms.product.domain;

public class Category {
	private String categoryStr;

	public Category(int categoryCode){
		switch(categoryCode){
		case 10:
			this.categoryStr = "Food";
			break;
		case 20:
			this.categoryStr = "Snack";
			break;
		case 30:
			this.categoryStr = "Bath";
			break;
		case 31:
			this.categoryStr = "배변";
			break;
		case 32:
			this.categoryStr = "탈취제";
			break;
		case 33:
			this.categoryStr = "귀·눈 위생";
			break;
		case 40:
			this.categoryStr = "Beauty";
			break;
		case 41:
			this.categoryStr = "가위";
			break;
		case 42:
			this.categoryStr = "브러쉬";
			break;
		case 50:
			this.categoryStr = "Clothes";
			break;
		case 60:
			this.categoryStr = "Accessory";
			break;
		case 61:
			this.categoryStr = "자동줄·하네스";
			break;
		case 62:
			this.categoryStr = "배낭";
			break;
		case 63:
			this.categoryStr = "헤어핀·모자";
			break;
		case 64:
			this.categoryStr = "양말·신발";
			break;
		case 70:
			this.categoryStr = "Toy";
			break;
		case 80:
			this.categoryStr = "House";
			break;
		}
	}

	public String getCategoryStr() {
		return categoryStr;
	}

	public void setCategoryStr(String categoryStr) {
		this.categoryStr = categoryStr;
	}
	
}
