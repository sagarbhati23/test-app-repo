const options = [
    document.getElementById("option1"), 
    document.getElementById("option2"), 
    document.getElementById("option3"), 
    document.getElementById("option4"), 
    document.getElementById("option5")
];
const pages = document.querySelectorAll(".page");
const colors = ["skyblue", "lightpink", "lightgreen", "orange", "violet"];

options.forEach((option, index) => {
    option.addEventListener('click', function() {
        pages.forEach((page, pageIndex) => {
            page.style.width = pageIndex === index ? "1090px" : "0px";
            page.style.backgroundColor = pageIndex === index ? colors[index] : "white";
        });
    });
});
