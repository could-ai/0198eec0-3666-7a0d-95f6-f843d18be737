import 'package:flutter/material.dart';

class DistributorInfoScreen extends StatelessWidget {
  const DistributorInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Distributor Bahan Pokok'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildSectionCard(
            context,
            title: 'Persyaratan Legalitas Usaha',
            icon: Icons.business_center,
            content: [
              _buildInfoTile('Badan Usaha', 'Harus memiliki badan usaha yang legal seperti PT, CV, atau Usaha Dagang.'),
              _buildInfoTile('Perizinan Usaha', 'Memiliki Surat Izin Usaha Perdagangan (SIUP), Tanda Daftar Perusahaan (TDP)/Nomor Induk Berusaha (NIB), dan Surat Izin Tempat Usaha (SITU).'),
              _buildInfoTile('NPWP', 'Memiliki Nomor Pokok Wajib Pajak (NPWP) perusahaan yang aktif.'),
              _buildInfoTile('Kantor Fisik', 'Memiliki kantor dan pengurus yang aktif menjalankan kegiatan usaha.'),
            ],
          ),
          const SizedBox(height: 16),
          _buildSectionCard(
            context,
            title: 'Tahapan Menjadi Distributor',
            icon: Icons.format_list_numbered,
            content: [
              _buildInfoTile('1. Dirikan Badan Usaha', 'Mendirikan dan mendaftarkan badan usaha Anda secara legal.'),
              _buildInfoTile('2. Urus Perizinan', 'Mengurus semua perizinan usaha yang diperlukan (SIUP, NIB, SITU, NPWP).'),
              _buildInfoTile('3. Siapkan Modal & Fasilitas', 'Memastikan modal yang cukup sesuai kesepakatan dengan produsen dan memiliki fasilitas yang memadai.'),
              _buildInfoTile('4. Dapatkan Rekomendasi', 'Mengurus surat rekomendasi sebagai distributor dari instansi terkait jika diperlukan (misalnya Dinas Perindag).'),
              _buildInfoTile('5. Daftarkan Produk (jika perlu)', 'Jika mendistribusikan pangan olahan, daftarkan produk ke Badan POM untuk mendapatkan izin edar.'),
              _buildInfoTile('6. Lapor Secara Berkala', 'Melaporkan volume distribusi bahan pokok secara rutin ke Kementerian Perdagangan sesuai peraturan.'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, {required String title, required IconData icon, required List<Widget> content}) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 28, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(height: 24, thickness: 1),
            ...content,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle_outline, size: 20, color: Colors.green),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(subtitle, style: const TextStyle(color: Colors.black54)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
