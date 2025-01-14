<?php

namespace App\Controllers;

use App\Models\MProduk;

class ProdukController extends RestfulController
{
    /**
     * Menambahkan produk baru
     */
    public function create()
    {
        $data = [
            'kode_produk' => $this->request->getVar('kode_produk'),
            'nama_produk' => $this->request->getVar('nama_produk'),
            'harga' => $this->request->getVar('harga')
        ];

        $model = new MProduk();
        $model->insert($data);

        $produk = $model->find($model->getInsertID());
        return $this->responseHasil(200, true, $produk);
    }

    /**
     * Menampilkan semua produk
     */
    public function list()
    {
        $model = new MProduk();
        $produk = $model->findAll();
        return $this->responseHasil(200, true, $produk);
    }

    /**
     * Menampilkan detail produk berdasarkan ID
     */
    public function detail($id)
    {
        $model = new MProduk();
        $produk = $model->find($id);

        if (!$produk) {
            return $this->responseHasil(404, false, "Produk tidak ditemukan");
        }

        return $this->responseHasil(200, true, $produk);
    }

    /**
     * Mengubah data produk berdasarkan ID
     */
    public function ubah($id)
    {
        $data = [
            'kode_produk' => $this->request->getVar('kode_produk'),
            'nama_produk' => $this->request->getVar('nama_produk'),
            'harga' => $this->request->getVar('harga')
        ];

        $model = new MProduk();

        if (!$model->find($id)) {
            return $this->responseHasil(404, false, "Produk tidak ditemukan");
        }

        $model->update($id, $data);
        $produk = $model->find($id);

        return $this->responseHasil(200, true, $produk);
    }

    /**
     * Menghapus produk berdasarkan ID
     */
    public function hapus($id)
    {
        $model = new MProduk();

        if (!$model->find($id)) {
            return $this->responseHasil(404, false, "Produk tidak ditemukan");
        }

        $model->delete($id);
        return $this->responseHasil(200, true, "Produk berhasil dihapus");
    }
}
