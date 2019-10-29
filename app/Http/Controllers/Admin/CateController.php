<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use DB;
use Input;
class CateController extends Controller
{
    //
    public function  cateList(){

        $rows = DB::table('category')->orderBy('path','asc')->get();
        $data = compact("rows");
        return view("Admin.Cate.cateList",$data);
    }

    // 添加分类
    public function cateAdd(){
        // 获取所有的分类
        $rows = DB::table("category")->orderBy('path','asc')->get();
        $data  = compact('rows');
        return view("Admin.Cate.cateAdd",$data);
    }

    // 添加分类的处理程序
    public function cateAddAction(){
        $id = Input::get('id');
        $cate_name = Input::get('cate_name');
        // 无论根分类还是子分类，但凡查询的分类已经存在，就别想插入了。。。
        $row = DB::table("category")->where('cate_name',$cate_name)->first();

        if($row){
            // 此分类已经存在
            return redirect(url('Admin/Cate/cateAdd'));
        }else{
            // 不是根分类
            if($id>0){
                $pid = $id;
                // 1.通过父id查询到父类的path
                $row = DB::table('category')->where('id',$id)->select('path')->first();

//                $row = DB::table('category')->where('id',$id)->first();
                $path = $row->path;
                $data = compact('cate_name','pid');
                // 2.插入成功后获取当前的id
                $id = DB::table("category")->insertGetId($data);
                // 3.当前的path = 父类的path + “,自己的id“
                $path = $path.",$id";
            }else{
                // 插入根分类
                $pid = 0;
                $data = compact('cate_name','pid');
                $id = $path = DB::table("category")->insertGetId($data);
            }
            // 4.修改当前分类的path
            DB::table('category')->where('id',$id)->update(['path'=>$path]);
            return redirect(url('Admin/Cate/cateList'));
        }


    }
}
