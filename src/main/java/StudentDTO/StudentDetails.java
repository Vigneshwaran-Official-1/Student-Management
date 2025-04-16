package StudentDTO;

public class StudentDetails {
	private int id;
	private String name;
	private int tamil;
	private int english;
	private int physics;
	private int chemistry;
	private int maths;
	
	public StudentDetails(int id, String name, int tamil, int english, int physics, int chemistry, int maths) {
		super();
		this.id = id;
		this.name = name;
		this.tamil = tamil;
		this.english = english;
		this.physics = physics;
		this.chemistry = chemistry;
		this.maths = maths;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getTamil() {
		return tamil;
	}

	public void setTamil(int tamil) {
		this.tamil = tamil;
	}

	public int getEnglish() {
		return english;
	}

	public void setEnglish(int english) {
		this.english = english;
	}

	public int getPhysics() {
		return physics;
	}

	public void setPhysice(int physice) {
		this.physics = physice;
	}

	public int getChemistry() {
		return chemistry;
	}

	public void setChemistry(int chemistry) {
		this.chemistry = chemistry;
	}

	public int getMaths() {
		return maths;
	}

	public void setMaths(int maths) {
		this.maths = maths;
	}

	
	
}
