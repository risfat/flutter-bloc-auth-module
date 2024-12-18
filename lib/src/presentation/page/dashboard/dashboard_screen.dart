import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common/colors.dart';
import '../../../common/constants.dart';
import '../../../common/images.dart';
import '../../../common/routes.dart';
import '../../bloc/authenticator_watcher/authenticator_watcher_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(child: _buildUserProfile(context)),
          SliverToBoxAdapter(child: _buildQuickActions(context)),
          SliverToBoxAdapter(child: _buildChart()),
          SliverPadding(
            padding: const EdgeInsets.all(16.0),
            sliver: _buildRecentActivities(),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: 200.0,
      centerTitle: true,
      floating: false,
      pinned: true,
      backgroundColor: ColorLight.primary.withOpacity(0.05),
      flexibleSpace: FlexibleSpaceBar(
        title: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Text('Dashboard', style: TextStyle(color: Colors.white))),
        background: Image.asset(
          Images.HEADER_BG,
          fit: BoxFit.cover,
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.logout, color: ColorLight.primary),
          onPressed: () {
            context.read<AuthenticatorWatcherBloc>().add(
                  const AuthenticatorWatcherEvent.signOut(),
                );
            context.replaceNamed(AppRoutes.LOGIN_ROUTE_NAME);
          },
        ),
      ],
    );
  }

  Widget _buildUserProfile(BuildContext context) {
    return FutureBuilder<SharedPreferences>(
      future: SharedPreferences.getInstance(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final prefs = snapshot.data;
          final lastName = prefs?.getString(USER_LAST_NAME) ?? 'Doe';
          final email = prefs?.getString(USER_EMAIL) ?? 'john.doe@example.com';

          return _buildProfileContent(context, lastName, email);
        } else {
          return _buildShimmerEffect(context);
        }
      },
    );
  }

  Widget _buildProfileContent(
      BuildContext context, String lastName, String email) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(Images.USER_AVATAR),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome, $lastName',
                  style: Theme.of(context).textTheme.titleLarge,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  email,
                  style: Theme.of(context).textTheme.titleSmall,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildShimmerEffect(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 18,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: double.infinity,
                    height: 14,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
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
          Text(
            'Quick Actions',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          SizedBox(height: 16),
          AnimationLimiter(
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(
                6,
                (index) => AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 375),
                  columnCount: 3,
                  child: ScaleAnimation(
                    child: FadeInAnimation(
                      child: _buildActionButton(
                        _getQuickActionIcon(index),
                        _getQuickActionLabel(index),
                        context,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label, BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor.withOpacity(0.1),
      borderRadius: BorderRadius.circular(8),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 32, color: Theme.of(context).primaryColor),
            SizedBox(height: 8),
            Text(label, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }

  Widget _buildChart() {
    return Container(
      height: 250,
      padding: EdgeInsets.all(16),
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(show: false),
          borderData: FlBorderData(show: false),
          minX: 0,
          maxX: 7,
          minY: 0,
          maxY: 6,
          lineBarsData: [
            LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(1, 1),
                  FlSpot(2, 4),
                  FlSpot(3, 2),
                  FlSpot(4, 5),
                  FlSpot(5, 1),
                  FlSpot(6, 4),
                  FlSpot(7, 5),
                ],
                isCurved: true,
                color: Colors.blue,
                barWidth: 3,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                    show: true, color: Colors.blue.withOpacity(0.3))),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentActivities() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 375),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: ListTile(
                  leading: CircleAvatar(child: Icon(_getActivityIcon(index))),
                  title: Text('Activity ${index + 1}'),
                  subtitle: Text('Description for activity ${index + 1}'),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
              ),
            ),
          );
        },
        childCount: 15,
      ),
    );
  }

  IconData _getQuickActionIcon(int index) {
    switch (index) {
      case 0:
        return Icons.person;
      case 1:
        return Icons.settings;
      case 2:
        return Icons.notifications;
      case 3:
        return Icons.favorite;
      case 4:
        return Icons.history;
      case 5:
        return Icons.help;
      default:
        return Icons.star;
    }
  }

  String _getQuickActionLabel(int index) {
    switch (index) {
      case 0:
        return 'Profile';
      case 1:
        return 'Settings';
      case 2:
        return 'Notifications';
      case 3:
        return 'Favorites';
      case 4:
        return 'History';
      case 5:
        return 'Help';
      default:
        return 'Action';
    }
  }

  IconData _getActivityIcon(int index) {
    final icons = [
      Icons.event,
      Icons.shopping_cart,
      Icons.favorite,
      Icons.location_on,
      Icons.message,
    ];
    return icons[index % icons.length];
  }
}
