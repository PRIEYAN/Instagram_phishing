from flask import Flask,render_template,url_for,request
app=Flask(__name__)

@app.route('/',methods=['POST','GET'])
def login():
    name=request.form.get('name')
    paswd=request.form.get('paswd')
    if name and paswd:
        print("name : ", name)
        print("password : ", paswd)
    return render_template('index.html')

if __name__ == '__main__':
    app.run(debug=True)