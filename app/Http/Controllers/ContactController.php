<?php

namespace App\Http\Controllers;

use App\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // return response()->json(Contact::all());
        $contacts = Contact::orderBy('id', 'DESC')->paginate(5);
        return response()->json($contacts);
    }
    public function total()
    {
        return response()->json(Contact::count());
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $data = Contact::find($id);
        return response()->json($data);
    }


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validate = $this->validate($request, [
                        'name' => 'required',
                        'email' => 'required',
                        'phone' => 'required',
                    ]);

        if(!$validate){
            $response = array('response' => 'Data entry is stored', 'success' => false);
            return $response;

        } else {
            $data = new Contact;
            $data->name = $request->input('name');
            $data->email = $request->input('email');
            $data->phone = $request->input('phone');
            $data->save();

            return response()->json($data);
        }
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $validate = $this->validate($request, [
        'name' => 'required',
        'email' => 'required',
        'phone' => 'required',
      ]);

      if(!$validate){
        $response = array('response' => 'Data entry is updated', 'success' => false);
        return $response;

      } else {
          $data = Contact::find($id);
          $data->name = $request->input('name');
          $data->email = $request->input('email');
          $data->phone = $request->input('phone');
          $data->save();

          return response()->json($data);
      }
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        // Find an item
        $data = Contact::find($id);
        $data->delete();
        $response = array('response' => 'Data entry is deleted', 'success' => true);
        return $response;
    }


// ******************************** \\
// use Illuminate\Http\Request;
// use App\Contact;

// Route::group(['middleware' => 'api'], function(){
//   // Fetch Contacts
//   Route::get('contacts', function(){
//     return Contact::latest()->orderBy('created_at', 'desc')->get();
//   });

  // Get Single Contact
  // Route::get('contact/{id}', function($id){
  //   return Contact::findOrFail($id);
  // });

  // Add Contact
  // Route::post('contact/store', function(Request $request){
  //   return Contact::create(['name' => $request->input(['name']), 'email' => $request->input(['email']), 'phone' => $request->input(['phone'])]);
  // });


  // Update Contact
  // Route::patch('contact/{id}', function(Request $request, $id){
  //   Contact::findOrFail($id)->update(['name' => $request->input(['name']), 'email' => $request->input(['email']), 'phone' => $request->input(['phone'])]);
  // });

  // Delete Contact
//   Route::delete('contact/{id}', function($id){
//     return Contact::destroy($id);
//   });
// });

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });
}