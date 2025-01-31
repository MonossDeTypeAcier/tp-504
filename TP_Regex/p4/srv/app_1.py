from flask import Flask, render_template
import re

app = Flask(__name__)
 
@app.route('/')
def index():
    
    return render_template('form.html')

@app.route("/newuser/", methods=['POST'])
def newuser():
    
    id=request.form.get('lastname')
    
    id_regex1= r'^.{6,}$'
    id_regex2= r'[0-9]'
    id_regex3= r'[A-Z]'
    id_regex4= r'[a-z]'
    id_regex5= r'[#%\{\}@]'
    
    if not re.match(id_regex1, id):
        return "Email non valide" ,400
    if not re.match(id_regex2, id):
        return "Email non valide" ,400
    if not re.match(id_regex3, id):
        return "Email non valide" ,400
    if not re.match(id_regex4, id):
        return "Email non valide" ,400
    if not re.match(id_regex5, id):
        return "Email non valide" ,400

    
    return "Identifiant correcte"
    

if __name__ == '__main__':
    app.run(debug=True)
