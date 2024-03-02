<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ListItem;
use Illuminate\Support\Facades\Route;

class TodoListContoller extends Controller
{
    public function index(){
        // return view('welcome', ['listNames' => ListItem::where('is_complete', 0)->get()]);
        return view('welcome', ['listNames' => ListItem::all()]);
    }

    public function markcomplete($id){
        $listItem = ListItem::find($id);
        $listItem->is_complete = 1;
        $listItem->save();
        return redirect('/');  
    }
    
    public function saveItem(Request $request){
        $newListItem = new ListItem();
        $newListItem->name = $request->listName;
        $newListItem->is_complete = 0;
        $newListItem->save();
        
        return redirect('/');   
    }
}
