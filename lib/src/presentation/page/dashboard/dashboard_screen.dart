import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../common/routes.dart';
import '../../bloc/authenticator_watcher/authenticator_watcher_bloc.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(),
          SliverToBoxAdapter(child: _buildQuickActions(context)),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: _buildRecentActivities(),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 200.0,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/images/header_background.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildQuickActions(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Quick Actions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  context.read<AuthenticatorWatcherBloc>().add(
                        const AuthenticatorWatcherEvent.signOut(),
                      );

                  context.replaceNamed(AppRoutes.LOGIN_ROUTE_NAME);
                },
              ),
            ],
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              _buildActionButton(Icons.person, 'Profile'),
              _buildActionButton(Icons.settings, 'Settings'),
              _buildActionButton(Icons.notifications, 'Notifications'),
              _buildActionButton(Icons.favorite, 'Favorites'),
              _buildActionButton(Icons.history, 'History'),
              _buildActionButton(Icons.help, 'Help'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.purple.shade100,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, size: 30, color: Colors.purple),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildRecentActivities() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.event)),
            title: Text('Activity ${index + 1}'),
            subtitle: Text('Description for activity ${index + 1}'),
            trailing: const Icon(Icons.arrow_forward_ios),
          );
        },
        childCount: 10,
      ),
    );
  }
}
