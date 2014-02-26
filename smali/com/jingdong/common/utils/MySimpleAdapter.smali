.class public Lcom/jingdong/common/utils/MySimpleAdapter;
.super Lcom/jingdong/common/utils/SimpleBeanAdapter;
.source "MySimpleAdapter.java"

# interfaces
.implements Lcom/jingdong/common/frame/IDestroyListener;
.implements Lcom/jingdong/common/frame/IPauseListener;
.implements Lcom/jingdong/common/frame/IResumeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jingdong/common/utils/MySimpleAdapter$ImageProcessor;
    }
.end annotation


# static fields
.field public static final THUMB_TYPE_CENTER:I = 0x1

.field public static final THUMB_TYPE_NONE:I


# direct methods
.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 7
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IIFF)V
    .locals 0
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .parameter "thumbType"
    .parameter "thumbWidth"
    .parameter "thumbHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[IIFF)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-direct/range {p0 .. p5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[IZ)V
    .locals 6
    .parameter "myActivity"
    .parameter
    .parameter "itemId"
    .parameter "from"
    .parameter "to"
    .parameter "isNeedLifeCircleCallBack"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jingdong/common/frame/IMyActivity;",
            "Ljava/util/List",
            "<*>;I[",
            "Ljava/lang/String;",
            "[IZ)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, beanList:Ljava/util/List;,"Ljava/util/List<*>;"
    invoke-interface {p1}, Lcom/jingdong/common/frame/IMyActivity;->getThisActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/SimpleBeanAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 26
    if-eqz p6, :cond_0

    .line 27
    invoke-interface {p1, p0}, Lcom/jingdong/common/frame/IMyActivity;->addDestroyListener(Lcom/jingdong/common/frame/IDestroyListener;)V

    .line 28
    invoke-interface {p1, p0}, Lcom/jingdong/common/frame/IMyActivity;->addPauseListener(Lcom/jingdong/common/frame/IPauseListener;)V

    .line 29
    invoke-interface {p1, p0}, Lcom/jingdong/common/frame/IMyActivity;->addResumeListener(Lcom/jingdong/common/frame/IResumeListener;)V

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/SimpleBeanAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public isNoImage()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/jingdong/common/utils/MySimpleAdapter;->isAllowNoImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jingdong/common/utils/NoImageUtils;->needNoImage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/jingdong/common/utils/MySimpleAdapter;->gc()V

    .line 62
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/jingdong/common/utils/MySimpleAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method public setNextPageLoader(Lcom/jingdong/common/utils/NextPageLoader;)V
    .locals 0
    .parameter "nextPageLoader"

    .prologue
    .line 75
    return-void
.end method
