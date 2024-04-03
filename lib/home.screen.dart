import 'package:figma_to_flutter/data.model.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios,
          color: Color(0xff444444)),
        ),
        title: Text("Find Challenges",
        
        ),
        
      ),
      body: ListView.separated(itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.only(left: 18.sp, right: 18.sp,
          top: 1.2.h, bottom: 1.2.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(children: [
              SizedBox(width: 1.sp),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(
                  image: AssetImage(data_list[index].userImage),
                  height: 20.sp,
                  width: 20.sp,
                  fit: BoxFit.cover,
                ),
              ),
              // Image(image: AssetImage(data_list[index].userImage),
              // height: 15.sp,
              // width: 15.sp,
              // fit: BoxFit.cover,),
              SizedBox(width: 8.sp),
              Text(data_list[index].userName,
              style: TextStyle(
                fontSize: 11.sp,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontFamily: "Inter"
              ),)
            ],),
            SizedBox(height: 1.2.h),
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,
                color: Color(0xffBBBBBB)),
                borderRadius: BorderRadius.circular(7.sp)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(7.sp),
                child: Image(image: AssetImage(data_list[index].image),
                width: double.infinity,
                
                height: 25.h,
                fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 1.8.h),
            Text(data_list[index].title,
            style: TextStyle(
              fontFamily: "Inter",
              color: Color(0xff2b2b2b),
              fontSize: 13.sp,
              fontWeight: FontWeight.w500,
              
            )),
            SizedBox(height: 1.2.h),
            Text(data_list[index].description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xff6c6c6c),
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              fontFamily: "Inter"
            )),
            SizedBox(height: 1.3.h),
            FilledButton(
              
              onPressed: (){
                _showDialog(context);
              }, child: Text("Show challenge",
              style: TextStyle(
                color: Colors.white,
                fontSize: 11.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Inter"
              ),),
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Color(0xff9b75ef)),
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.sp))),
              fixedSize: MaterialStatePropertyAll(Size(MediaQuery.of(context).size.width, 34.sp)),
              
            ),)
          ]),
        );
      }, separatorBuilder: (context, index) {
        return Divider(
          thickness: 1,
          color: Color(0xffdfdfdf),
        );
      }, itemCount: data_list.length),
    );
  }
}


_showDialog(BuildContext context){
  return showDialog(context: context, builder: (context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 1.h),
        Row(children: [
          Spacer(),
          Text("Keep putting effort, Proud of you",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 11.sp
          )),
          Spacer(),
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.close))
        ],),
        Row(
          children: [
            Spacer(),
            Center(
              child: Image(image: AssetImage("assets/images/image_2.png"),
              width: 50.w,
              height: 50.w,),
            ),
            Spacer(),
          ],
        ),
        SizedBox(height: 1.h),
        Container(
          margin: EdgeInsets.only(left: 15.sp, right: 15.sp),
          child: TextField(
            maxLines: 5,
            minLines: 4,
            
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom: 3.sp,
              left: 3.sp,
              right: 3.sp,
              top: 3.sp),
              hintText: "Share your feeling on group to encourage other participants",
              hintStyle: TextStyle(
                fontFamily: "Inter",
                color: Color(0xffb0b0b0),
                fontSize: 10.sp,
                fontWeight: FontWeight.w400
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.sp),
                borderSide: BorderSide(color: Color(0xffd8d8d8))
              )
            ),
          ),
        ),
        SizedBox(height: 1.4.h),
        Container(
          margin: EdgeInsets.only(left: 15.sp, right: 15.sp),
          child: FilledButton(onPressed: (){
             Navigator.pop(context);
          }, child: Text("Post",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 10.sp,
            letterSpacing: 0.5,
            fontFamily: "Inter"
          )),
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Color(0xff3290ff)),
            fixedSize: MaterialStatePropertyAll(Size(MediaQuery.of(context).size.width, 34.sp)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(23.sp))),
            
          ),),
        ),
        SizedBox(height: 1.7.h),
      ]),
    );
  },);
}