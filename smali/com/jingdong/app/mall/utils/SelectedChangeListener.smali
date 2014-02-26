.class public Lcom/jingdong/app/mall/utils/SelectedChangeListener;
.super Ljava/lang/Object;
.source "SelectedChangeListener.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private handleShowPassword(Z)V
    .locals 0
    .parameter "isChecked"

    .prologue
    .line 46
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    .line 38
    return-void
.end method
