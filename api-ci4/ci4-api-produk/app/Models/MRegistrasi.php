<?php

namespace App\Models;

use CodeIgniter\Model;

class MRegistrasi extends Model
{
    protected $table = 'users';
    protected $allowedFields = ['nama', 'email', 'password'];
}
