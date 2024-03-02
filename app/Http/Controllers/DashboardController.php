<?php

namespace App\Http\Controllers;

use App\Models\Idea;
use App\Models\Comment_User;
use App\Models\CommentsVideo;
use App\Models\VideoFeed;
use Illuminate\Http\Request;


class DashboardController extends Controller
{
    public function index(){

        $inData = new VideoFeed([
            'comments_user' =>'test'
        ]);

        return view('index', ['comments_video' => CommentsVideo::all()]);


    }

}
