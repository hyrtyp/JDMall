.class public Lcom/jingdong/app/mall/product/ImageActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "ImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;,
        Lcom/jingdong/app/mall/product/ImageActivity$ImageFragment;
    }
.end annotation


# static fields
.field private static final BIG_IMAGE_MAX_HEIGHT:I = 0x500

.field private static final BIG_IMAGE_MAX_WIDTH:I = 0x320

.field private static final TAG:Ljava/lang/String; = "ImageActivity"

.field static mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFinishButton:Landroid/widget/ImageButton;

.field mIndicator:Landroid/widget/RelativeLayout;

.field mSaveButton:Landroid/widget/ImageButton;

.field mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 567
    invoke-static {p0, p1}, Lcom/jingdong/app/mall/product/ImageActivity;->save(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method

.method public static fadeIn(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 182
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 183
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static fadeOut(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 191
    .local v0, animation:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 192
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 193
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private static save(Landroid/content/Context;Ljava/io/File;)V
    .locals 20
    .parameter "context"
    .parameter "imgFile"

    .prologue
    .line 568
    const-string v18, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 569
    const-string v18, "\u672a\u627e\u5230\u5916\u90e8\u5b58\u50a8\u5361"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    .line 643
    :goto_0
    return-void

    .line 573
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canRead()Z

    move-result v18

    if-nez v18, :cond_2

    .line 574
    :cond_1
    const-string v18, "\u62b1\u6b49\uff0c\u5f53\u524d\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 578
    :cond_2
    const/4 v4, 0x0

    .line 580
    .local v4, dcim:Ljava/lang/String;
    sget v18, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    .line 581
    sget-object v18, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 584
    :cond_3
    const/4 v5, 0x0

    .line 585
    .local v5, dcimRoot:Ljava/io/File;
    if-eqz v4, :cond_4

    .line 586
    new-instance v5, Ljava/io/File;

    .end local v5           #dcimRoot:Ljava/io/File;
    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 589
    .restart local v5       #dcimRoot:Ljava/io/File;
    :cond_4
    const/4 v6, 0x0

    .line 590
    .local v6, dir:Ljava/io/File;
    if-nez v5, :cond_5

    .line 591
    new-instance v5, Ljava/io/File;

    .end local v5           #dcimRoot:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    const-string v19, "DCIM"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 593
    .restart local v5       #dcimRoot:Ljava/io/File;
    :cond_5
    new-instance v6, Ljava/io/File;

    .end local v6           #dir:Ljava/io/File;
    const-string v18, "jdimage"

    move-object/from16 v0, v18

    invoke-direct {v6, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 594
    .restart local v6       #dir:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v18

    if-nez v18, :cond_6

    .line 595
    const-string v18, "\u62b1\u6b49\uff0c\u5f53\u524d\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 599
    :cond_6
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 601
    .local v7, dirPath:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    .line 602
    .local v13, imgFileName:Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x2e

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 603
    .local v15, savedFileName:Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v19, Ljava/io/File;->separatorChar:C

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".jpg"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 605
    .local v16, savedFilePath:Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 607
    .local v17, savedfile:Ljava/io/File;
    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v3, v0, [B

    .line 608
    .local v3, buffer:[B
    const/4 v9, 0x0

    .line 609
    .local v9, fin:Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 611
    .local v11, fout:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    .line 612
    .end local v9           #fin:Ljava/io/FileInputStream;
    .local v10, fin:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 614
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .local v12, fout:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-virtual {v10, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v14

    .local v14, n:I
    if-gez v14, :cond_9

    .line 617
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 622
    if-eqz v10, :cond_7

    .line 623
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 629
    :cond_7
    :goto_2
    if-eqz v12, :cond_e

    .line 630
    :try_start_4
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    move-object v11, v12

    .end local v12           #fout:Ljava/io/FileOutputStream;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 637
    .end local v10           #fin:Ljava/io/FileInputStream;
    .end local v14           #n:I
    .restart local v9       #fin:Ljava/io/FileInputStream;
    :cond_8
    :goto_3
    if-eqz v17, :cond_d

    .line 638
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "\u5f53\u524d\u56fe\u7247\u5df2\u4fdd\u5b58\u5230\u6587\u4ef6\u5939\uff1a\""

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 615
    .end local v9           #fin:Ljava/io/FileInputStream;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v10       #fin:Ljava/io/FileInputStream;
    .restart local v12       #fout:Ljava/io/FileOutputStream;
    .restart local v14       #n:I
    :cond_9
    const/16 v18, 0x0

    :try_start_5
    move/from16 v0, v18

    invoke-virtual {v12, v3, v0, v14}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 618
    .end local v14           #n:I
    :catch_0
    move-exception v8

    move-object v11, v12

    .end local v12           #fout:Ljava/io/FileOutputStream;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    move-object v9, v10

    .line 619
    .end local v10           #fin:Ljava/io/FileInputStream;
    .local v8, e:Ljava/lang/Exception;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    :goto_4
    const/16 v17, 0x0

    .line 622
    if-eqz v9, :cond_a

    .line 623
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 629
    .end local v8           #e:Ljava/lang/Exception;
    :cond_a
    :goto_5
    if-eqz v11, :cond_8

    .line 630
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 632
    :catch_1
    move-exception v8

    .line 633
    .local v8, e:Ljava/io/IOException;
    const/16 v17, 0x0

    goto :goto_3

    .line 625
    .local v8, e:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 626
    .local v8, e:Ljava/io/IOException;
    const/16 v17, 0x0

    goto :goto_5

    .line 620
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    .line 622
    :goto_6
    if-eqz v9, :cond_b

    .line 623
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 629
    :cond_b
    :goto_7
    if-eqz v11, :cond_c

    .line 630
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 635
    :cond_c
    :goto_8
    throw v18

    .line 625
    :catch_3
    move-exception v8

    .line 626
    .restart local v8       #e:Ljava/io/IOException;
    const/16 v17, 0x0

    goto :goto_7

    .line 632
    .end local v8           #e:Ljava/io/IOException;
    :catch_4
    move-exception v8

    .line 633
    .restart local v8       #e:Ljava/io/IOException;
    const/16 v17, 0x0

    goto :goto_8

    .line 625
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #fin:Ljava/io/FileInputStream;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v10       #fin:Ljava/io/FileInputStream;
    .restart local v12       #fout:Ljava/io/FileOutputStream;
    .restart local v14       #n:I
    :catch_5
    move-exception v8

    .line 626
    .restart local v8       #e:Ljava/io/IOException;
    const/16 v17, 0x0

    goto :goto_2

    .line 632
    .end local v8           #e:Ljava/io/IOException;
    :catch_6
    move-exception v8

    .line 633
    .restart local v8       #e:Ljava/io/IOException;
    const/16 v17, 0x0

    move-object v11, v12

    .end local v12           #fout:Ljava/io/FileOutputStream;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    goto :goto_3

    .line 640
    .end local v8           #e:Ljava/io/IOException;
    .end local v14           #n:I
    :cond_d
    const-string v18, "\u62b1\u6b49\uff0c\u5f53\u524d\u56fe\u7247\u4fdd\u5b58\u5931\u8d25"

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 620
    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v10       #fin:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v18

    move-object v9, v10

    .end local v10           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    goto :goto_6

    .end local v9           #fin:Ljava/io/FileInputStream;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v10       #fin:Ljava/io/FileInputStream;
    .restart local v12       #fout:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v18

    move-object v11, v12

    .end local v12           #fout:Ljava/io/FileOutputStream;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    goto :goto_6

    .line 618
    :catch_7
    move-exception v8

    goto :goto_4

    .end local v9           #fin:Ljava/io/FileInputStream;
    .restart local v10       #fin:Ljava/io/FileInputStream;
    :catch_8
    move-exception v8

    move-object v9, v10

    .end local v10           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v9           #fin:Ljava/io/FileInputStream;
    .end local v11           #fout:Ljava/io/FileOutputStream;
    .restart local v10       #fin:Ljava/io/FileInputStream;
    .restart local v12       #fout:Ljava/io/FileOutputStream;
    .restart local v14       #n:I
    :cond_e
    move-object v11, v12

    .end local v12           #fout:Ljava/io/FileOutputStream;
    .restart local v11       #fout:Ljava/io/FileOutputStream;
    move-object v9, v10

    .end local v10           #fin:Ljava/io/FileInputStream;
    .restart local v9       #fin:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method


# virtual methods
.method public checkSaveState()V
    .locals 3

    .prologue
    .line 646
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity;->mSaveButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    if-nez v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 650
    .local v0, currPos:I
    sget-object v1, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 651
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity;->mSaveButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 653
    :cond_2
    iget-object v1, p0, Lcom/jingdong/app/mall/product/ImageActivity;->mSaveButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity;->getParams()Ljava/util/Map;

    move-result-object v0

    .line 169
    .local v0, maps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 170
    const-string v1, ""

    .line 172
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .parameter "savedInstanceState"

    .prologue
    .line 69
    invoke-super/range {p0 .. p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v14, 0x7f030078

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jingdong/app/mall/product/ImageActivity;->setContentView(I)V

    .line 71
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jingdong/app/mall/product/ImageActivity;->setRequestedOrientation(I)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/ImageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/ImageActivity;->getParamsString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/jingdong/common/utils/NewJLogUtil;->onJMAEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/ImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, bundle:Landroid/os/Bundle;
    const-string v14, "position"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 76
    .local v12, position:I
    const-string v14, "product"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Lcom/jingdong/common/entity/Product;

    .line 77
    .local v13, product:Lcom/jingdong/common/entity/Product;
    const-string v14, "orderComment"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/jingdong/common/entity/OrderComment;

    .line 78
    .local v9, orderComment:Lcom/jingdong/common/entity/OrderComment;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Lcom/jingdong/common/entity/Product;->getImageList()Ljava/util/List;

    move-result-object v4

    .line 80
    .local v4, images:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    :goto_0
    const/4 v5, 0x0

    .line 81
    .local v5, imgSize:I
    if-eqz v4, :cond_0

    .line 82
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 84
    :cond_0
    const/16 v14, 0x9

    if-le v5, v14, :cond_1

    .line 85
    invoke-static {}, Lcom/jingdong/common/utils/cache/GlobalImageCache;->getLruBitmapCache()Lcom/novoda/imageloader/core/cache/LruBitmapCache;

    move-result-object v14

    invoke-virtual {v14}, Lcom/novoda/imageloader/core/cache/LruBitmapCache;->cleanMost()V

    .line 88
    :cond_1
    new-instance v14, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v14}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v14, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    .line 93
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/ImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0093

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 94
    .local v6, lSize:F
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/ImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b0094

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 99
    .local v8, normalSize:F
    :goto_1
    move v7, v6

    .line 100
    .local v7, largeSize:F
    const v14, 0x7f0c02b2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jingdong/app/mall/product/ImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mIndicator:Landroid/widget/RelativeLayout;

    .line 101
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mIndicator:Landroid/widget/RelativeLayout;

    const v15, 0x7f0c02b4

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextSwitcher;

    .line 102
    .local v10, pageIndexTS:Landroid/widget/TextSwitcher;
    new-instance v14, Lcom/jingdong/app/mall/product/ImageActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v7}, Lcom/jingdong/app/mall/product/ImageActivity$1;-><init>(Lcom/jingdong/app/mall/product/ImageActivity;F)V

    invoke-virtual {v10, v14}, Landroid/widget/TextSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 115
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mIndicator:Landroid/widget/RelativeLayout;

    const v15, 0x7f0c02b5

    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 116
    .local v11, pageNum:Landroid/widget/TextView;
    invoke-virtual {v11, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/ImageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090070

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    if-eqz v4, :cond_4

    .line 119
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "/"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-gtz v12, :cond_3

    const/4 v14, 0x1

    :goto_2
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    .line 126
    :goto_3
    const v14, 0x7f0c02b1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jingdong/app/mall/product/ImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 127
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/support/v4/view/ViewPager;->setBackgroundColor(I)V

    .line 129
    new-instance v3, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v14, v4}, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/view/ViewPager;Ljava/util/List;)V

    .line 130
    .local v3, imageAdapter:Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;
    invoke-virtual {v3, v10}, Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;->setPageIndexTS(Landroid/widget/TextSwitcher;)V

    .line 132
    const v14, 0x7f0c02b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jingdong/app/mall/product/ImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mSaveButton:Landroid/widget/ImageButton;

    .line 134
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mSaveButton:Landroid/widget/ImageButton;

    new-instance v15, Lcom/jingdong/app/mall/product/ImageActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/jingdong/app/mall/product/ImageActivity$2;-><init>(Lcom/jingdong/app/mall/product/ImageActivity;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14, v12}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/jingdong/app/mall/product/ImageActivity;->checkSaveState()V

    .line 152
    const v14, 0x7f0c02b7

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/jingdong/app/mall/product/ImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mFinishButton:Landroid/widget/ImageButton;

    .line 153
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jingdong/app/mall/product/ImageActivity;->mFinishButton:Landroid/widget/ImageButton;

    new-instance v15, Lcom/jingdong/app/mall/product/ImageActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/jingdong/app/mall/product/ImageActivity$3;-><init>(Lcom/jingdong/app/mall/product/ImageActivity;)V

    invoke-virtual {v14, v15}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void

    .line 78
    .end local v3           #imageAdapter:Lcom/jingdong/app/mall/product/ImageActivity$ImageAdapter;
    .end local v4           #images:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    .end local v5           #imgSize:I
    .end local v6           #lSize:F
    .end local v7           #largeSize:F
    .end local v8           #normalSize:F
    .end local v10           #pageIndexTS:Landroid/widget/TextSwitcher;
    .end local v11           #pageNum:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v9}, Lcom/jingdong/common/entity/OrderComment;->getImageList()Ljava/util/List;

    move-result-object v4

    goto/16 :goto_0

    .line 95
    .restart local v4       #images:Ljava/util/List;,"Ljava/util/List<Lcom/jingdong/common/entity/Image;>;"
    .restart local v5       #imgSize:I
    :catch_0
    move-exception v2

    .line 96
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const/high16 v6, 0x4180

    .line 97
    .restart local v6       #lSize:F
    const/high16 v8, 0x4140

    .restart local v8       #normalSize:F
    goto/16 :goto_1

    .end local v2           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v7       #largeSize:F
    .restart local v10       #pageIndexTS:Landroid/widget/TextSwitcher;
    .restart local v11       #pageNum:Landroid/widget/TextView;
    :cond_3
    move v14, v12

    .line 120
    goto/16 :goto_2

    .line 122
    :cond_4
    const-string v14, "/0"

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const-string v14, "0"

    invoke-virtual {v10, v14}, Landroid/widget/TextSwitcher;->setCurrentText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 555
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 556
    sget-object v0, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 557
    sget-object v0, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0}, Landroid/support/v4/util/SparseArrayCompat;->clear()V

    .line 558
    const/4 v0, 0x0

    sput-object v0, Lcom/jingdong/app/mall/product/ImageActivity;->mCacheImagePaths:Landroid/support/v4/util/SparseArrayCompat;

    .line 560
    :cond_0
    return-void
.end method

.method public singleTapUp()V
    .locals 1

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 660
    invoke-virtual {p0}, Lcom/jingdong/app/mall/product/ImageActivity;->finish()V

    .line 662
    :cond_0
    return-void
.end method
