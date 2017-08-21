package jieun.pms.product.domain;

public class CategoryKor {
	private String categoryStr;
	
	public CategoryKor(int categoryCode){
		switch(categoryCode){
		case 10:
			this.categoryStr = "사료";
			break;
		case 20:
			this.categoryStr = "간식";
			break;
		case 30:
			this.categoryStr = "위생";
			break;
		case 31:
			this.categoryStr = "배변";
			break;
		case 32:
			this.categoryStr = "탈취제";
			break;
		case 33:
			this.categoryStr = "Hygiene";
			break;
		case 40:
			this.categoryStr = "미용";
			break;
		case 41:
			this.categoryStr = "가위";
			break;
		case 42:
			this.categoryStr = "브러쉬";
			break;
		case 50:
			this.categoryStr = "의류";
			break;
		case 60:
			this.categoryStr = "악세사리";
			break;
		case 61:
			this.categoryStr = "자동줄";
			break;
		case 62:
			this.categoryStr = "배낭";
			break;
		case 63:
			this.categoryStr = "모자";
			break;
		case 64:
			this.categoryStr = "양말";
			break;
		case 70:
			this.categoryStr = "장난감";
			break;
		case 80:
			this.categoryStr = "하우스";
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
