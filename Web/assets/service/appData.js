
function User() {
    this.userid = 0;
    this.email = "";
    this.password = "";
    this.firstname = "";
    this.lastname = "";
    this.title = "";
    this.speciality = "";
    this.country = "";
    this.city = "";
    this.phonenumber = "";
    this.firstaddress = "";
    this.secondaddress = "";
    this.referencecode = "";
    this.referenceexpiry = new Date();
}

function Contactus() {
    this.contactid = 0;
    this.contacttype = "";
    this.contactemail = "";
    this.description = "";
}

function Feedback() {
    this.FeedbackId = 0;
    this.UserId = 0;
    this.QuestionId = 0;
    this.Answer = "";
}
