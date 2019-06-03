<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

// $router->get('/', function () use ($router) {
//     return $router->app->version();
// });
// $router->get('/', function ()  {
//     return view('homepage', ['name' => 'oSnippet']);
// });
// $router->get('/', function ()  {
//     return view('contacts', ['name' => 'oSnippet']);
// });
// -- INFO -- \\
/*
 * Activate Eloquent and Facades
 * Open up the bootstrap/app.php and uncomment this line, // app->withEloquent.
 * Once uncommented, Lumen hooks the Eloquent ORM with your database as configured in the .env file.
 * php artisan make:migration create_authors_table
 * run "php -S localhost:8000 -t public" to serve the project. Head over to your browser. 
 */

$router->get('/', function () use ($router) {
    return view('home');
});

$router->get('/version', function () use ($router) {
    return '<h3>version: 0.1.0</h3>';
});


$router->group(['prefix' => 'api'], function () use ($router) {
    $router->get('contacts',        ['uses' => 'ContactController@index']);
    $router->get('contact/total',   ['uses' => 'ContactController@total']);
    $router->get('contact/{id}',    ['uses' => 'ContactController@show']);
    $router->post('contact/store',  ['uses' => 'ContactController@store']);
    $router->delete('contact/{id}', ['uses' => 'ContactController@destroy']);
    $router->put('contact/{id}',    ['uses' => 'ContactController@update']);
});