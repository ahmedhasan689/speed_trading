<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Auth;
use Spatie\Translatable\HasTranslations;

class ItemSolution extends Model
{

    protected $table = 'item_solution';
    public $timestamps = true;

    protected $guarded = array('id');


    public function item()
    {
        return $this->belongsTo(Item::class, 'item_id');
    }
    public function solution()
    {
        return $this->belongsTo(Solution::class, 'solution_id');
    }

}
