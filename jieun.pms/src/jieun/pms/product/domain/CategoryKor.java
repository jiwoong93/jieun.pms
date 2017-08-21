package jieun.pms.product.domain;

public class CategoryKor {
	private String categoryStr;
	
	public CategoryKor(int categoryCode){
		switch(categoryCode){
		case 10:
			this.categoryStr = "���";
			break;
		case 20:
			this.categoryStr = "����";
			break;
		case 30:
			this.categoryStr = "����";
			break;
		case 31:
			this.categoryStr = "�躯";
			break;
		case 32:
			this.categoryStr = "Ż����";
			break;
		case 33:
			this.categoryStr = "Hygiene";
			break;
		case 40:
			this.categoryStr = "�̿�";
			break;
		case 41:
			this.categoryStr = "����";
			break;
		case 42:
			this.categoryStr = "�귯��";
			break;
		case 50:
			this.categoryStr = "�Ƿ�";
			break;
		case 60:
			this.categoryStr = "�Ǽ��縮";
			break;
		case 61:
			this.categoryStr = "�ڵ���";
			break;
		case 62:
			this.categoryStr = "�賶";
			break;
		case 63:
			this.categoryStr = "����";
			break;
		case 64:
			this.categoryStr = "�縻";
			break;
		case 70:
			this.categoryStr = "�峭��";
			break;
		case 80:
			this.categoryStr = "�Ͽ콺";
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
