<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PreferredFamilyTypes extends Model
{
    use HasFactory;

    protected $fillable = [
        'partner_id', 'family_type_id'
    ];

}
