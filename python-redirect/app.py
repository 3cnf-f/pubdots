from flask import Flask, redirect

app = Flask(__name__)

@app.route('/ons')
def redirect_to_ons():
   return redirect('')

@app.route('/tors')
def redirect_to_tors():
   return redirect('')

@app.route('/fre')
def redirect_to_fre():
   return redirect('')

@app.route('/')
def redirect_to_bnr24():
   return redirect('')



if __name__ == '__main__':  

    app.run(debug=True,host='0.0.0.0', port=9191) 
