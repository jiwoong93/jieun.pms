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
			this.categoryStr = "�躯";
			break;
		case 32:
			this.categoryStr = "Ż����";
			break;
		case 33:
			this.categoryStr = "�͡��� ����";
			break;
		case 40:
			this.categoryStr = "Beauty";
			break;
		case 41:
			this.categoryStr = "����";
			break;
		case 42:
			this.categoryStr = "�귯��";
			break;
		case 50:
			this.categoryStr = "Clothes";
			break;
		case 60:
			this.categoryStr = "Accessory";
			break;
		case 61:
			this.categoryStr = "�ڵ��١��ϳ׽�";
			break;
		case 62:
			this.categoryStr = "�賶";
			break;
		case 63:
			this.categoryStr = "����ɡ�����";
			break;
		case 64:
			this.categoryStr = "�縻���Ź�";
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
