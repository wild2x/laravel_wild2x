<?php



use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\RumahSakitController;
use App\Http\Controllers\PasienController;
use App\Http\Controllers\RegisterController;


Route::get('/', [LoginController::class, 'login'])->name('login');
Route::post('actionlogin', [LoginController::class, 'actionlogin'])->name('actionlogin');
Route::get('register', [RegisterController::class, 'register'])->name('register');
Route::post('register/action', [RegisterController::class, 'actionregister'])->name('actionregister');

Route::get('home', [HomeController::class, 'index'])->name('home')->middleware('auth');
Route::get('actionlogout', [LoginController::class, 'actionlogout'])->name('actionlogout')->middleware('auth');

Route::resource('rumah_sakit', RumahSakitController::class);
Route::resource('pasien', PasienController::class);
Route::post('rumah_sakit/store', 'RumahSakitController@store');
Route::post('rumah_sakit/destroy','RumahSakitController@destroy');
Route::post('pasien/destroy','PasienController@destroy');
Route::get('/getpasienrs/{id_rs}', [PasienController::class, 'getpasienrs'])->name('getpasienrs');

// Route::get('/', function () {
//     return view('main');
//});
