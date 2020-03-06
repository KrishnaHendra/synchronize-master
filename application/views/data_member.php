<div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Data Table</h4>
                                <div class="row">
                                    <div class="col-md-12 text-center">
                                        <a href="<?= base_url('member/cetak') ?>" class="btn btn-info btn-sm col-md-4" target="_blank"><i class="fa fa-file"></i> PRINT DATA</a>
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered zero-configuration">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nama</th>
                                                <th>Email</th>
                                                <th>Telepon</th>
                                                <th>Tanggal Lahir</th>
                                                <th>Tanggal Daftar</th>
                                                
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <?php $no=1; foreach($member as $m):?>
                                            <tr>
                                                <td><?= $no++ ?></td>
                                                <td><?= $m['nama_user'] ?></td>
                                                <td><?= $m['email'] ?></td>
                                                <td><?= $m['telepon'] ?></td>
                                                <td><?= $m['tgl_lahir'] ?></td>
                                                <td><?= date('d M Y', $m['created_at']) ?></td>
                                            </tr>
                                        <?php endforeach; ?>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>