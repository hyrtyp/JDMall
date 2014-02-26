.class Lcom/jingdong/app/mall/ErrorActivity$5;
.super Ljava/lang/Object;
.source "ErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/ErrorActivity;->onDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/ErrorActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/ErrorActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/ErrorActivity$5;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/jingdong/app/mall/ErrorActivity$5;->this$0:Lcom/jingdong/app/mall/ErrorActivity;

    const/4 v1, -0x1

    #calls: Lcom/jingdong/app/mall/ErrorActivity;->myOnClick(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/ErrorActivity;->access$1(Lcom/jingdong/app/mall/ErrorActivity;I)V

    .line 167
    return-void
.end method
