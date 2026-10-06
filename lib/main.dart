import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Màu nền xám nhẹ toàn màn hình
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          child: Column(
            children: [
              // 1. Thanh Icon phía trên
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildIconButton(
                    icon: Icons.arrow_back,
                    color: Colors.black87,
                    onTap: () {},
                  ),
                  _buildIconButton(
                    icon: Icons.edit_note_outlined,
                    color: const Color(0xFF2E7D32), // Màu xanh lá nhạt
                    onTap: () {},
                  ),
                ],
              ),

              const SizedBox(height: 80),

              // 2. Ảnh đại diện tròn (Avatar)
              const CircleAvatar(
                radius: 70, // Đường kính 140px
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),

              const SizedBox(height: 24),

              // 3. Tên sinh viên
              const Text(
                'Nguyễn Hữu Nhất',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 0.2,
                ),
              ),

              const SizedBox(height: 8),

              // 4. Mã số sinh viên
              Text(
                'SV052203007919',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Hàm tạo ô chứa Icon có viền bo tròn và bóng đổ mờ
  Widget _buildIconButton({
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Container(
      width: 44,
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: Icon(icon, color: color, size: 22),
        onPressed: onTap,
      ),
    );
  }
}
