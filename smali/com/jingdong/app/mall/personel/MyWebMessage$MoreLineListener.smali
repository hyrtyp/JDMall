.class Lcom/jingdong/app/mall/personel/MyWebMessage$MoreLineListener;
.super Ljava/lang/Object;
.source "MyWebMessage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/personel/MyWebMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoreLineListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/jingdong/app/mall/personel/MyWebMessage;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MoreLineListener;->this$0:Lcom/jingdong/app/mall/personel/MyWebMessage;

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p2, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MoreLineListener;->view:Landroid/view/View;

    .line 745
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyWebMessage$MoreLineListener;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 751
    return-void
.end method
