.class Lcom/jingdong/app/mall/personel/PersonelActivity$33;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->handleMeetingEntrance(Lcom/jingdong/common/utils/JSONObjectProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

.field private final synthetic val$isCheckin:Ljava/lang/String;

.field private final synthetic val$meetingToken:Ljava/lang/String;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->val$isCheckin:Ljava/lang/String;

    iput-object p3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->val$meetingToken:Ljava/lang/String;

    .line 2709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$33;)Lcom/jingdong/app/mall/personel/PersonelActivity;
    .locals 1
    .parameter

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isStartAnim:Z
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$71(Lcom/jingdong/app/mall/personel/PersonelActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2712
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingAssistantIcon:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$69(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2713
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->startAmAnimation()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$14(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 2715
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->meetingAssistantIcon:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$69(Lcom/jingdong/app/mall/personel/PersonelActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->val$isCheckin:Ljava/lang/String;

    iget-object v3, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->val$name:Ljava/lang/String;

    iget-object v4, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$33;->val$meetingToken:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/jingdong/app/mall/personel/PersonelActivity$33$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$33;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2741
    return-void
.end method
