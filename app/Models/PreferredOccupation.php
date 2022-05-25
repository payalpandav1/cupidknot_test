<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PreferredOccupation extends Model
{
    use HasFactory;

    protected $fillable = [
        'partner_id', 'occupation_id'
    ];
}
