.class Lcom/jd/lottery/lib/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jd/lottery/lib/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/activity/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/activity/MainActivity$1;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    iget-object v0, p0, Lcom/jd/lottery/lib/activity/MainActivity$1;->this$0:Lcom/jd/lottery/lib/activity/MainActivity;

    iget-object v0, v0, Lcom/jd/lottery/lib/activity/MainActivity;->main_scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1, v1}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 135
    return-void
.end method
