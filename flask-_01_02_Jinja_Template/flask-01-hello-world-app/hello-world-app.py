from flask import Flask 
app = Flask(__name__)
@app.route('/')
def hello():
   return "Hello World"

#Create a function `second` which returns a string `This is the second page` and assign a URL route the `second` function with decorator `@app.route('/second')`. 
#Create a function `third` which returns a string `This is the subpage of third page` and assign a URL route the `third` function with decorator `@app.route('/third/subthird')`. 

@app.route('/second')
def second():
    return "This is the second page"

@app.route('/third/subthird')
def third():
    return "This is the subpage of third page"

#Create a dynamic url which takes id number dynamically and return with a massage which show id of page.
@app.route('/forth/<string:my_id>')
def forth(my_id):
    return f"The page id is {my_id}"
if __name__ == '__main__':

    app.run(debug=True)
    # app.run(host= '0.0.0.0', port=8081)