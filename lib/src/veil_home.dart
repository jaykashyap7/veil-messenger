import 'package:flutter/material.dart';

class VeilHome extends StatelessWidget {
  const VeilHome({super.key});

  static const _muted = Color(0xFF9BA197);
  static const _accent = Color(0xFFC8F169);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.shield_moon_outlined, color: _accent, size: 27),
            SizedBox(width: 10),
            Text('VEIL', style: TextStyle(fontWeight: FontWeight.w800, letterSpacing: 2)),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Search (planned)',
            onPressed: () => _showPlanned(context, 'Search'),
            icon: const Icon(Icons.search),
          ),
          IconButton(
            tooltip: 'Settings (planned)',
            onPressed: () => _showPlanned(context, 'Privacy settings'),
            icon: const Icon(Icons.tune),
          ),
          const SizedBox(width: 6),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 8, 18, 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const _StatusBanner(),
              const SizedBox(height: 24),
              const Text('Messages', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700)),
              const SizedBox(height: 6),
              const Text('Your private space starts here.', style: TextStyle(color: _muted)),
              const SizedBox(height: 22),
              Expanded(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 330),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 82,
                          height: 82,
                          decoration: BoxDecoration(
                            color: const Color(0xFF20251B),
                            borderRadius: BorderRadius.circular(28),
                            border: Border.all(color: const Color(0xFF38432B)),
                          ),
                          child: const Icon(Icons.lock_outline, color: _accent, size: 38),
                        ),
                        const SizedBox(height: 22),
                        const Text(
                          'Quiet by design.',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          'Your conversations will appear here after secure accounts and encrypted delivery are implemented.',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: _muted, height: 1.5),
                        ),
                        const SizedBox(height: 22),
                        FilledButton.icon(
                          onPressed: () => _showPlanned(context, 'Start a secure chat'),
                          icon: const Icon(Icons.add_comment_outlined),
                          label: const Text('Start a chat'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Text(
                'STAGE 1 • FOUNDATION ONLY',
                style: TextStyle(color: _muted, fontSize: 11, letterSpacing: 1.4),
              ),
            ],
          ),
        ),
      ),
    );
  }

  static void _showPlanned(BuildContext context, String feature) {
    showDialog<void>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(feature),
        content: const Text(
          'This feature is planned but not implemented yet. VEIL currently contains only the Stage 1 app shell; do not use it for private communications.',
        ),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: const Text('Got it')),
        ],
      ),
    );
  }
}

class _StatusBanner extends StatelessWidget {
  const _StatusBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: const Color(0xFF252218),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF51452A)),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, color: Color(0xFFE7C46A)),
          SizedBox(width: 12),
          Expanded(
            child: Text(
              'Prototype only — end-to-end encryption, accounts and message delivery are not active yet.',
              style: TextStyle(height: 1.4, color: Color(0xFFF0E7D2)),
            ),
          ),
        ],
      ),
    );
  }
}
