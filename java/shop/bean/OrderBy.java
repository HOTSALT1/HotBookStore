package shop.bean;

public enum OrderBy {
	NONE(null), LOGTIME("1"), D_PRICE("2"), D_PRICE_DESC("3"), SCORE("4"), P_DATE("5");
	
	private String value;
	
	OrderBy(String value) {
		this.value = value;
	}
	
	public String getValue() {
		return value;
	}
}
