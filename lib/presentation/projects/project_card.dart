import 'package:flutter/material.dart';
import 'package:my_portfolio/core/color/colors.dart';
import 'package:my_portfolio/core/widgets/responsive_size.dart';
import 'package:my_portfolio/presentation/projects/project_utils.dart';
import 'package:sizer/sizer.dart';

class ProjectCard extends StatefulWidget {
  final ProjectUtils project;

  const ProjectCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          isHover = !isHover;
        });
      },
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 1.w),
        width: ResponsiveSize.isDesktop(context) ? 30.w : 70.w,
        height: 36.h,
        decoration: BoxDecoration(
          border: Border.all(
            width: 3.0,
            color: Palette.whiteColor,
          ),
          gradient: isHover ? Palette.pinkpurple : Palette.grayBack,
          borderRadius: BorderRadius.circular(10),
          boxShadow: isHover
              ? [Palette.primaryColorShadow]
              : [Palette.blackColorShadow],
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: isHover ? const EdgeInsets.all(20) : EdgeInsets.zero,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: height * 0.02),
                  Flexible(
                    child: Text(
                      widget.project.titles,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: isHover
                            ? Palette.whiteColor
                            : Palette.darkTextColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Flexible(
                    child: Text(
                      widget.project.description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isHover
                            ? Palette.whiteColor
                            : Palette.darkTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                ],
              ),
            ),
            _AnimatedOpacity(
              isHover: isHover,
              bannerPath: widget.project.banners,
            )
          ],
        ),
      ),
    );
  }
}

class _AnimatedOpacity extends StatelessWidget {
  final bool isHover;
  final String bannerPath;

  const _AnimatedOpacity({
    super.key,
    required this.isHover,
    required this.bannerPath,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 400),
      opacity: isHover ? 0.1 : 1.0,
      child: Container(
        width: ResponsiveSize.isDesktop(context) ? 30.w : 70.w,
        height: 36.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(bannerPath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
