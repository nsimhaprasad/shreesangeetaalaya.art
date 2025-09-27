# Shree Sangeetaalaya Music School - Requirements Document

## Project Overview
A comprehensive web platform for Shree Sangeetaalaya Music School with public landing pages and administrative portal for managing students, classes, and payments.

## Domain Structure
- **Main Website**: shreesangeetaalaya.art (Public-facing)
- **Admin Portal**: admin.shreesangeetaalaya.art (Administrative interface)

## 1. Public Website Features (shreesangeetaalaya.art)

### 1.1 Landing Page
- **Hero Section**: School name, tagline, compelling call-to-action
- **About Section**: School history, mission, vision
- **Course Offerings**: Detailed descriptions of music programs
- **Faculty Profiles**: Teacher credentials and specializations
- **Student Testimonials**: Reviews and success stories
- **Gallery**: Photos of events, performances, facilities
- **Contact Information**: Address, phone, email, map integration
- **Blog Section**: Regular posts about music education, events
- **SEO Optimization**: Meta tags, structured data, sitemap

### 1.2 Course Pages
- Individual pages for each music genre/instrument
- Course duration, fee structure, curriculum overview
- Prerequisites and age groups
- Sample lessons or videos

### 1.3 Enrollment System
- Online course inquiry forms
- Payment integration with PhonePe
- Automated email confirmations
- SMS notifications for updates

## 2. Admin Portal Features (admin.shreesangeetaalaya.art)

### 2.1 Dashboard
- Overview of students, revenue, upcoming classes
- Quick actions and notifications
- Analytics and reporting

### 2.2 Student Management
- Student registration and profiles
- Attendance tracking
- Progress monitoring
- Communication history

### 2.3 Class Management
- Schedule creation and management
- Room/resource allocation
- Teacher assignments
- Batch management

### 2.4 Package Management
- Course package creation
- Pricing configuration
- Discount management
- Package analytics

### 2.5 Payment Management
- Payment tracking and history
- Invoice generation
- Payment link creation and sending
- Integration with PhonePe Business API

### 2.6 Communication System
- SMS notifications via API
- Email campaigns and notifications
- Payment reminder automation
- Event announcements

## 3. Technical Requirements

### 3.1 Framework
- Ruby on Rails 7.x
- PostgreSQL database
- Redis for caching and background jobs
- Sidekiq for background processing

### 3.2 Authentication & Authorization
- Devise for authentication
- Role-based access control (Admin, Teacher, Student)
- Multi-tenant architecture for admin subdomain

### 3.3 Payment Integration
- PhonePe Business API integration
- Webhook handling for payment status updates
- Secure payment link generation
- Invoice and receipt generation

### 3.4 Communication APIs
- SMS gateway integration (Twilio/MSG91/Fast2SMS)
- SMTP email configuration
- Template-based messaging
- Bulk communication capabilities

### 3.5 SEO & Performance
- Meta tag management
- Sitemap generation
- Image optimization
- Caching strategies
- Mobile responsiveness

### 3.6 Deployment
- Render.com compatible configuration
- Environment variable management
- Database migrations
- Asset pipeline optimization

## 4. Information Needed

### 4.1 School Details
- **Location**: Complete address for local SEO
- **Music Genres**: Types of music taught (Classical, Western, Devotional, etc.)
- **Instruments**: List of instruments offered
- **Age Groups**: Target demographics
- **Faculty Details**: Teacher profiles and qualifications
- **Unique Selling Points**: What makes the school special

### 4.2 Business Information
- **Fee Structure**: Course pricing models
- **Class Duration**: Typical lesson lengths
- **Batch Sizes**: Students per class
- **Operating Hours**: Schedule information
- **Contact Details**: Phone numbers, email addresses

### 4.3 Technical Preferences
- **SMS Provider**: Preferred SMS gateway
- **Email Provider**: SMTP configuration details
- **Analytics**: Google Analytics setup requirements

## 5. Implementation Phases

### Phase 1: Foundation
- Rails application setup
- Database design and models
- Basic authentication system
- Admin portal structure

### Phase 2: Public Website
- Landing page development
- SEO optimization
- Course pages
- Contact forms

### Phase 3: Admin Features
- Student management system
- Class scheduling
- Package management
- Basic reporting

### Phase 4: Payment Integration
- PhonePe integration
- Payment link generation
- Webhook processing
- Invoice system

### Phase 5: Communication System
- SMS integration
- Email templates
- Automated notifications
- Payment reminders

### Phase 6: Deployment & Optimization
- Render.com deployment
- Performance optimization
- Security hardening
- Testing and bug fixes

## 6. Success Metrics
- Increased online course inquiries
- Improved local search rankings
- Streamlined administrative processes
- Automated payment collection
- Enhanced student communication

---

**Next Steps**: Gather specific school information and begin Phase 1 implementation.