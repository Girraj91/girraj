class BaseEmployee
{
    public id: number;
    public name: String;
    public gender:String;
    public salary: number=150000;
}
class Employee extends BaseEmployee{
    constructor(id:number,name:String,gender:String){
        super()
        this.id=id;
        this.name=name;
        this.gender=gender;
    }
    public calculateSalary(commission:number){
        return this.salary/12+commission;
    }
}
let emp = new Employee(101,"deepu","male")
console.log(emp)